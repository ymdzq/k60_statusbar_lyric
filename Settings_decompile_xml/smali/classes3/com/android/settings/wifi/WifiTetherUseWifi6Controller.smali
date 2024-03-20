.class public Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;
.super Ljava/lang/Object;
.source "WifiTetherUseWifi6Controller.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;
    }
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mRestartWifiAp:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTetherUseWifi6(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/Preference;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    .line 43
    check-cast p3, Landroidx/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    const-string p3, "connectivity"

    .line 44
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mCm:Landroid/net/ConnectivityManager;

    .line 45
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 47
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private setSoftApConfiguration(Z)V
    .locals 2

    .line 103
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setIeee80211axEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 105
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method private trackPreferenceClick(Ljava/lang/String;)V
    .locals 1

    .line 109
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "preference"

    .line 110
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tether_settings_click"

    .line 111
    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mRestartWifiAp:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 79
    iput-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mRestartWifiAp:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->trackPreferenceClick(Ljava/lang/String;)V

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "hotspot_80211ax_support"

    const/4 v1, -0x2

    .line 87
    invoke-static {p2, v0, p1, v1}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->setSoftApConfiguration(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mCm:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 96
    new-instance p1, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;-><init>(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mRestartWifiAp:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

    new-array p0, v0, [Ljava/lang/Void;

    .line 97
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return p2
.end method

.method public onResume()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->updateState()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 53
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isIeee80211axEnabled()Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "hotspot_80211ax_support"

    .line 51
    invoke-static {v0, v3, v1, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isIeee80211axEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->setSoftApConfiguration(Z)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->mTetherUseWifi6:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
