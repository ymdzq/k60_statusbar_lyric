.class public Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const-string v0, "metered"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo p2, "wifi"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private updateSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;I)V
    .locals 0

    .line 92
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method getMeteredOverride()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    .line 86
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 73
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string p2, "com.android.providers.settings"

    .line 77
    invoke-static {p2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 78
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eq v1, v0, :cond_1

    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 111
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 59
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
