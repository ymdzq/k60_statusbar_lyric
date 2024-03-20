.class public Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherApBandPreferenceController.java"


# instance fields
.field private m5GHzSupported:Z

.field private m6GHzSupported:Z

.field private mBandEntries:[Ljava/lang/String;

.field private mBandIndex:I

.field private mBandSummaries:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 61
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->syncBandSupportAndCountryCode()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries()V

    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->m5GHzSupported:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mCountryCode:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private is6GhzBandSupported()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->m6GHzSupported:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mCountryCode:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVendorLegacyDualBandSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private syncBandSupportAndCountryCode()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->m5GHzSupported:Z

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is6GHzBandSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->m6GHzSupported:Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method private validateSelection(I)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is6GhzBandSupported()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method public getBandIndex()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    return p0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_prefer_5G:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 125
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    aget-object p0, p0, v0

    return-object p0

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_tether_all_in_one"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "wifi_tether_network_ap_band_2"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wifi_tether_network_ap_band"

    :goto_0
    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->syncBandSupportAndCountryCode()V

    .line 140
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Band preference changed, updating band index to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiTetherApBandPref"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->syncBandSupportAndCountryCode()V

    const-string v1, "WifiTetherApBandPref"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 72
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v0, "Updating band index to BAND_2GHZ because no config"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is6GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 92
    invoke-virtual {v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 94
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v0, "5Ghz/6Ghz not supported, updating band index to 2GHz"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 77
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x10

    .line 85
    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 80
    invoke-virtual {v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 78
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 82
    iput v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v0, "Dual band not supported with OWE, updating band index to 2GHz"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->validateSelection(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    .line 89
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating band index to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is6GhzBandSupported()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 108
    sget p0, Lcom/android/settings/R$string;->wifi_ap_choose_2G:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 110
    :cond_6
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method updatePreferenceEntries()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 174
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_choose_2G:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    .line 178
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_prefer_5G:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is6GhzBandSupported()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_1

    .line 183
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_prefer_6G:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 188
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isVendorLegacyDualBandSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    if-eq v0, v4, :cond_3

    const/16 v0, 0x10

    .line 192
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_choose_vendor_dual_band:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandEntries:[Ljava/lang/String;

    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    return-void
.end method
