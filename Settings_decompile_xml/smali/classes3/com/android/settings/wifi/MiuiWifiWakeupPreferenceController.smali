.class public Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MiuiWifiWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final DEFAULT_DISABLE_TIME:I = 0xf

.field private static final KEY_ENABLE_WIFI_WAKEUP:Ljava/lang/String; = "enable_wifi_wakeup"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field mIsWifiWakeupEnabled:Z

.field private final mLocationFilter:Landroid/content/IntentFilter;

.field mLocationManager:Landroid/location/LocationManager;

.field private final mLocationReceiver:Landroid/content/BroadcastReceiver;

.field mPreference:Landroidx/preference/SwitchPreference;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "enable_wifi_wakeup"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mIsWifiWakeupEnabled:Z

    .line 76
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$1;-><init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "location"

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 90
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p0, "android.intent.action.AIRPLANE_MODE"

    .line 91
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private getWifiScanningEnabled()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    return p0
.end method

.method private getWifiWakeupEnabled()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mIsWifiWakeupEnabled:Z

    return p0
.end method

.method private isAirplaneModeOn()Z
    .locals 2

    .line 160
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private showLocationDialog()V
    .locals 3

    .line 137
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 139
    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_location_summary:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 140
    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_positive_button:I

    new-instance v2, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$2;-><init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 146
    sget p0, Lcom/android/settings/R$string;->wifi_wakeup_negative_button:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 147
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showScanningDialog()V
    .locals 3

    .line 195
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_title:I

    .line 196
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_scan_summary:I

    .line 197
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_positive_button:I

    new-instance v2, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;-><init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V

    .line 198
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_wakeup_negative_button:I

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 106
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->getWifiWakeupStatus()I

    move-result p0

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

.method getNoLocationSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 175
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "link"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_wakeup_summary_no_location:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 177
    filled-new-array {v0}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 169
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->miui_wifi_wakeup_summary:I

    const/16 v1, 0xf

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->getWifiWakeupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 113
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(II)V
    .locals 0

    const/16 p2, 0x258

    if-eq p1, p2, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->showLocationDialog()V

    return v1

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->showScanningDialog()V

    return v1

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No fragment to start activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setWifiWakeupEnabled(Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setAutoWakeupEnabled(Z)V

    .line 221
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mIsWifiWakeupEnabled:Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->isAirplaneModeOn()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
