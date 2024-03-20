.class public Lcom/android/settings/wifi/WifiAmlSlaveWifiController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiAmlSlaveWifiController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAmlSlaveWifiManager:Landroid/net/wifi/AmlSlaveWifiManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mContext:Landroid/content/Context;

    const-string v0, "AmlSlaveWifiService"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/AmlSlaveWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mAmlSlaveWifiManager:Landroid/net/wifi/AmlSlaveWifiManager;

    return-void
.end method

.method private isSlaveWifiEnabled()Z
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_slave_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "global_dual_wifi"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isAmlSlaveWifiSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mAmlSlaveWifiManager:Landroid/net/wifi/AmlSlaveWifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "global_dual_wifi"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mAmlSlaveWifiManager:Landroid/net/wifi/AmlSlaveWifiManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/net/wifi/AmlSlaveWifiManager;->setAmlSlaveWifiEnabled(I)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->mAmlSlaveWifiManager:Landroid/net/wifi/AmlSlaveWifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/AmlSlaveWifiManager;->setAmlSlaveWifiEnabled(I)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "global_dual_wifi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;->isSlaveWifiEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
