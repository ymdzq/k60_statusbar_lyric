.class public Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiLinkTurboOptions.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualSim:Landroidx/preference/Preference;

.field private mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mListSummaries:[Ljava/lang/String;

.field private mListValues:[Ljava/lang/String;

.field private mListener:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

.field private mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mPrimaryEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlaveEnabled:Z

.field private mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDualWifi(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryEnabled(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mPrimaryEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveEnabled(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mSlaveEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveWifiUtils(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)Lcom/android/settingslib/wifi/SlaveWifiUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryEnabled(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mPrimaryEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveEnabled(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mSlaveEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDualSimPref(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateDualSimPref()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDualWifiPref(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateDualWifiPref()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$3;

    invoke-direct {v0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$3;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mPrimaryEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mSlaveEnabled:Z

    .line 79
    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$1;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$2;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initDualWifiAndDualSim()V
    .locals 3

    const-string v0, "dual_wifi"

    .line 163
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isDualWifiSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualWifi:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    :cond_1
    :goto_0
    const-string v0, "button_smart_dual_sim_key"

    .line 172
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isDualSimSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 178
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private initGlobalDualWifi()V
    .locals 3

    const-string v0, "global_dual_wifi"

    .line 188
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    const-string v2, "AmlSlaveWifiService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initLinkTurbo()V
    .locals 1

    const-string v0, "enable_wifi_link_turbo"

    .line 153
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->isLinkTurboSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showOrHideOption(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 303
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateSwitchAndModeSummary()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private updateDualSimPref()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isDualSimSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDualWifiPref()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private updateSwitchAndModeSummary()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "link_turbo_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboController;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v0, Lcom/android/settings/wifi/WifiAssistantController;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiAssistantController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "AmlSlaveWifiService"

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiAmlSlaveWifiController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "WifiLinkTurboOptions"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 332
    sget p0, Lcom/android/settings/R$xml;->wifi_link_turbo_option:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->initLinkTurbo()V

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

    if-eqz v0, :cond_0

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListener:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_link_turbo_mode_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListValues:[Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->wifi_link_turbo_mode_summary_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListSummaries:[Ljava/lang/String;

    const-string/jumbo p1, "wifi_link_turbo_mode"

    .line 138
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 139
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->initDualWifiAndDualSim()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->initGlobalDualWifi()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 208
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "enable_wifi_link_turbo"

    .line 278
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 280
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->showOrHideOption(Z)V

    if-eqz p1, :cond_0

    .line 282
    iget-object p2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->setLinkTurboOptions(Landroid/content/Context;I)V

    .line 283
    iget-object p2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListener:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

    if-eqz p2, :cond_0

    .line 284
    invoke-interface {p2, v0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;->setLinkTurboOptionsCallback(I)V

    .line 287
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mListener:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;

    if-eqz p0, :cond_1

    .line 288
    invoke-interface {p0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;->enableWifiLinkTurboCallback(Z)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string/jumbo v1, "wifi_link_turbo_mode"

    .line 291
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 292
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 293
    iget-object p2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "link_turbo_mode"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateSwitchAndModeSummary()V

    :cond_3
    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mDualSim:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 264
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x20000

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.phone.settings.MiuiConfigureMobileSettings"

    const-string v1, "com.android.phone"

    .line 266
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_from"

    .line 268
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->isWifiLinkTurboEnabled()Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mEnableWifiLinkTurbo:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateSwitchAndModeSummary()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->setLinkTurboOptions(Landroid/content/Context;I)V

    .line 241
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateDualWifiPref()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions;->updateDualSimPref()V

    return-void
.end method
