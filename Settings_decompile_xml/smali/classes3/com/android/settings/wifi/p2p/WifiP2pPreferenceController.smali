.class public Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field mIsWifiDirectAllow:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDirectPref:Landroidx/preference/Preference;

.field private mWifiDirectPrefClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$misHotSpotOn(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->isHotSpotOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtogglePreferences(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 76
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPrefClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 66
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isWifiDirectAllowed(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mIsWifiDirectAllow:Z

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isHotSpotOn()Z
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isWifiP2pAvailable()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mIsWifiDirectAllow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private togglePreferences()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->isWifiP2pAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_direct"

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPrefClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    .line 114
    iget-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mIsWifiDirectAllow:Z

    if-nez p1, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    sget p1, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "wifi_direct"

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

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->isWifiP2pAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
