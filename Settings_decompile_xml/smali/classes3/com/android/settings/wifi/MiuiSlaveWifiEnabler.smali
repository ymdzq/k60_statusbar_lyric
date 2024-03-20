.class public Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;
.super Ljava/lang/Object;
.source "MiuiSlaveWifiEnabler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsNeededEnabled:Z

.field private mIsSlaveWifiNeedOn:Z

.field private mPreference:Landroidx/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlaveWifiP2pUtils:Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

.field private mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mStateMachineEvent:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsNeededEnabled(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsNeededEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSlaveWifiNeedOn(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsSlaveWifiNeedOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveWifiUtils(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)Lcom/android/settingslib/wifi/SlaveWifiUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeededEnabled(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsNeededEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSlaveWifiNeedOn(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsSlaveWifiNeedOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiStateChanged(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/wifi/SlaveWifiUtils;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsNeededEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsSlaveWifiNeedOn:Z

    .line 72
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$1;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler$2;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 108
    new-instance p3, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    invoke-direct {p3, p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiP2pUtils:Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    .line 109
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mHandler:Landroid/os/Handler;

    .line 111
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    new-instance p1, Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "miui.intent.action.wifi.WIFI_SLAVE_CONNECTION_FAILURE"

    .line 113
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "miui.net.wifi.p2p.SLAVE_STATE_CHANGED"

    .line 114
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->setPreference(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->setChecked(Z)V

    .line 190
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->sendDoubleWifiStatusBroadcast(Z)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 186
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 197
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->sendDoubleWifiStatusBroadcast(Z)V

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 199
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->setChecked(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 200
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 204
    :goto_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mayDisableTethering(Z)Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendDoubleWifiStatusBroadcast(Z)V
    .locals 2

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.intent.action.DOUBLE_WIFI_STATUS"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "double_wifi_status"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mStateMachineEvent:Z

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mStateMachineEvent:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkedChanged(Z)V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_in_airplane_mode:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 152
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsNeededEnabled:Z

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mayDisableTethering(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 156
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 157
    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsNeededEnabled:Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiP2pUtils:Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->isP2p1Up()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiP2pUtils:Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    invoke-virtual {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->tearDownP2p1()V

    .line 160
    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIsSlaveWifiNeedOn:Z

    return-void

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->setWifiSlaveEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 164
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_error:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_4
    sget-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz p0, :cond_5

    .line 169
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    const/4 p0, 0x0

    .line 170
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_5
    :goto_0
    return-void
.end method

.method public setPreference(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    .line 130
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiState()I

    move-result p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slave wifi state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiSlaveWifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0xf

    if-ne p1, v3, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method
