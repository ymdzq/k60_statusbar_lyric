.class public Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiPrioritySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPrioritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiPriorityFragment"
.end annotation


# instance fields
.field private configuredApCount:I

.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field mConfiguredAps:Landroidx/preference/PreferenceCategory;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$mformerHasHigherPriority(Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 143
    :cond_1
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v3, :cond_2

    return v1

    :cond_2
    if-ge v2, v3, :cond_3

    return v0

    .line 148
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    :goto_0
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 151
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-le p0, p1, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    const-string p0, "CMCC-AUTO"

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "WifiSettingsExt formerHasHigherPriority() same true"

    const-string v4, "WifiPrioritySettings"

    if-eqz p1, :cond_8

    .line 157
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const-string p1, "CMCC"

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "WifiSettingsExt formerHasHigherPriority() same false"

    if-eqz v5, :cond_a

    .line 162
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 164
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 169
    :cond_9
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    const-string v5, "CMCC-EDU"

    .line 174
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 176
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 177
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 179
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 184
    :cond_b
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 191
    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 192
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 199
    :cond_e
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    sub-int/2addr p0, v0

    .line 289
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 290
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const-string v0, "WifiPrioritySettings"

    const-string/jumbo v1, "updateConfig()"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 282
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 283
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 284
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    return-void
.end method


# virtual methods
.method public calculateInitPriority(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v3, "ERROR"

    .line 108
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 109
    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;-><init>(Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 122
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    sub-int v3, v0, v2

    .line 124
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-eq v4, v3, :cond_3

    .line 125
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 126
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public initPage()V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "WifiPrioritySettings"

    if-nez v0, :cond_0

    const-string p0, "Fail to get Wifi Manager service"

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfiguredAps:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    .line 57
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->configuredApCount:I

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 61
    :goto_0
    iget v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->configuredApCount:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 62
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 65
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->configuredApCount:I

    const-string v5, ", priority="

    if-ge v3, v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before sorting: ssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->calculateInitPriority(Ljava/util/List;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/settings/R$string;->wifi_priority_label:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    :goto_2
    iget v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->configuredApCount:I

    if-ge v2, v4, :cond_4

    .line 75
    iget-object v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After sorting: ssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    goto :goto_3

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    :goto_3
    new-instance v6, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v6, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v6, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v6, v2}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfiguredAps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v2, v7

    goto :goto_2

    .line 92
    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "configured_ap_list"

    .line 33
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfiguredAps:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "wifi"

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->initPage()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 42
    sget p1, Lcom/android/settings/R$layout;->wifi_priority_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "WifiPrioritySettings"

    .line 222
    instance-of v1, p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 223
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :try_start_1
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move v3, v1

    :goto_0
    const-string v5, "Error happens when modify priority manually"

    .line 230
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v4, v1

    .line 233
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority old value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", new value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->wifi_priority_changed:I

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eq v3, v4, :cond_1

    sub-int/2addr v3, v2

    sub-int/2addr v4, v2

    .line 240
    iget-object p1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {p1, v4, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 242
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-gt p1, p2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    sub-int v3, v0, p1

    .line 246
    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 247
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->updateUI()V

    return v1

    :cond_1
    return v2
.end method

.method public updateUI()V
    .locals 5

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfiguredAps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->mConfigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 268
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_priority_label:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
