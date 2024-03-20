.class public Lcom/android/settings/wifi/MiuiWifiEnabler;
.super Ljava/lang/Object;
.source "MiuiWifiEnabler.java"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Landroidx/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$JEnGYZ9f7LwhOZcPrw0fVvXHeyk(Lcom/android/settings/wifi/MiuiWifiEnabler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->lambda$handleWifiStateChanged$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiStateChanged(Lcom/android/settings/wifi/MiuiWifiEnabler;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiEnabler$1;-><init>(Lcom/android/settings/wifi/MiuiWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setPreference(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiEnabler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/MiuiWifiEnabler;I)V

    const-wide/16 p0, 0x1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$handleWifiStateChanged$0(I)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "Currently in satellite mode"

    const-string v2, "MiuiWifiEnabler"

    const-string/jumbo v3, "satellite_state"

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    .line 169
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 151
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 163
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkedChanged(Z)V
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_in_airplane_mode:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 107
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eqz p1, :cond_3

    .line 113
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiUtils;->getWifiStaSapConcurrency(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_error:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    :cond_4
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    if-nez p1, :cond_6

    .line 136
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removeAllUnregisteredConfig(Landroid/content/Context;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public setPreference(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 94
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
