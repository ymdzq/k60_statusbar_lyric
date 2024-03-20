.class public Lcom/android/settings/wifi/WifiTetherAutoOffController;
.super Ljava/lang/Object;
.source "WifiTetherAutoOffController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/Preference;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 42
    check-cast p3, Landroidx/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

    .line 43
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private trackPreferenceClick(Ljava/lang/String;)V
    .locals 1

    .line 80
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "preference"

    .line 81
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tether_settings_click"

    .line 82
    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTetherAutoOffController;->trackPreferenceClick(Ljava/lang/String;)V

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 70
    new-instance p2, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 71
    invoke-virtual {p2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 72
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    if-eqz p1, :cond_0

    const-string p0, "hotspot_auto_off"

    const/4 p1, 0x0

    .line 74
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTetherAutoOffController;->updateState()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v0

    .line 48
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherAutoOffController;->mTetherAutoDisable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
