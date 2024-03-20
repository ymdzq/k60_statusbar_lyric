.class public Lcom/android/settings/wireless/TetherEntryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TetherEntryController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mHasRegister:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/wireless/TetherEntryController;)Lcom/android/settingslib/RestrictedPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wireless/TetherEntryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateValue(Lcom/android/settings/wireless/TetherEntryController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wireless/TetherEntryController;->updateValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lcom/android/settings/wireless/TetherEntryController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wireless/TetherEntryController$1;-><init>(Lcom/android/settings/wireless/TetherEntryController;)V

    iput-object p1, p0, Lcom/android/settings/wireless/TetherEntryController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wireless/TetherEntryController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 43
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wireless/TetherEntryController;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateValue()V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/settings/wireless/TetherEntryController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wireless/TetherEntryController$2;-><init>(Lcom/android/settings/wireless/TetherEntryController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/wireless/TetherEntryController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_tether_settings"

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/wireless/TetherEntryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "wifi_tether_settings"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wireless/TetherEntryController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "track_caller"

    const-string/jumbo v2, "settings"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 58
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->getWifiTetherPlacement(Landroid/content/Context;)I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public isWifiTetherEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "wifi"

    .line 112
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 113
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/wireless/TetherEntryController;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wireless/TetherEntryController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/wireless/TetherEntryController;->mHasRegister:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/settings/wireless/TetherEntryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wireless/TetherEntryController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wireless/TetherEntryController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/wireless/TetherEntryController;->mHasRegister:Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/wireless/TetherEntryController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "no_config_tethering"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/wireless/TetherEntryController;->updateValue()V

    :cond_0
    return-void
.end method
