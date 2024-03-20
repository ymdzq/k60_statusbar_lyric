.class public Lcom/android/settings/wireless/MiuiNfcToggleController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MiuiNfcToggleController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcSeRoute:Lcom/android/settings/nfc/NfcSeRoute;

.field private mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

.field private mSupportMultiRoute:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.nfc.hce"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSupportMultiRoute:Z

    return-void
.end method

.method private getListPreference(Landroidx/preference/PreferenceScreen;)Landroidx/preference/ListPreference;
    .locals 6

    const-string/jumbo v0, "se_route"

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    if-nez p1, :cond_0

    const-string p1, "getListPreference called! seRoute:null"

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/MiuiNfcToggleController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "ro.se.type"

    .line 137
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "getRoSeType is null from SystemProperties"

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/wireless/MiuiNfcToggleController;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.vendor.se.type"

    .line 141
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "HCE,eSE"

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoSeType value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wireless/MiuiNfcToggleController;->log(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 151
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "HCE"

    .line 154
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v5, "ESE"

    .line 156
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 157
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v5, "UICC"

    .line 158
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "UICC1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const-string v5, "UICC2"

    .line 160
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 161
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_6
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after format,getRoSeType value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wireless/MiuiNfcToggleController;->log(Ljava/lang/String;)V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 166
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "MiuiNfcToggleController"

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "toggle_nfc"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/MainSwitchPreference;

    const-string v1, "nfc_secure_settings"

    .line 64
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/MiuiNfcToggleController;->getListPreference(Landroidx/preference/PreferenceScreen;)Landroidx/preference/ListPreference;

    move-result-object v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v3, "MiuiNfcToggleController"

    if-nez v2, :cond_1

    const-string p0, "getListPreference called! seRoute:null"

    .line 72
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v1, :cond_2

    const-string v4, "getListPreference called! secureNfc:null"

    .line 77
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_9

    .line 81
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowMiuiNFC()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/settings/RegionUtils;->IS_MEXICO_TELCEL:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 90
    iput-object v4, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 94
    :cond_5
    new-instance v3, Lcom/android/settings/nfc/SecureNfcEnabler;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v1}, Lcom/android/settings/nfc/SecureNfcEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V

    iput-object v3, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    .line 106
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSupportMultiRoute:Z

    if-eqz v1, :cond_7

    .line 107
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;Landroidx/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_2

    .line 109
    :cond_7
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v4}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;Landroidx/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 112
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSupportMultiRoute:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_MEXICO_TELCEL:Z

    if-nez v0, :cond_8

    .line 113
    new-instance p1, Lcom/android/settings/nfc/NfcSeRoute;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/nfc/NfcSeRoute;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroidx/preference/ListPreference;)V

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcSeRoute:Lcom/android/settings/nfc/NfcSeRoute;

    goto :goto_3

    .line 115
    :cond_8
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    return-void

    .line 82
    :cond_9
    :goto_4
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 83
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-eqz v1, :cond_a

    .line 85
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "toggle_nfc"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcSeRoute:Lcom/android/settings/nfc/NfcSeRoute;

    if-eqz p0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSeRoute;->pause()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mSecureNfcEnabler:Lcom/android/settings/nfc/SecureNfcEnabler;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNfcToggleController;->mNfcSeRoute:Lcom/android/settings/nfc/NfcSeRoute;

    if-eqz p0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSeRoute;->resume()V

    :cond_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/enterprise/RestrictionsHelper;->hasNFCRestriction(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 181
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p0

    invoke-interface {p0}, Lmiui/enterprise/IRestrictionsHelper;->isNFCRestriction()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 182
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
