.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;,
        Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;
    }
.end annotation


# static fields
.field static final KEY_WIFI_HOTSPOT_SECURITY:Ljava/lang/String; = "wifi_hotspot_security"

.field static final KEY_WIFI_HOTSPOT_SPEED:Ljava/lang/String; = "wifi_hotspot_speed"

.field static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off"

.field static final KEY_WIFI_TETHER_NETWORK_AP_BAND:Ljava/lang/String; = "wifi_tether_network_ap_band"

.field static final KEY_WIFI_TETHER_NETWORK_NAME:Ljava/lang/String; = "wifi_tether_network_name"

.field static final KEY_WIFI_TETHER_NETWORK_PASSWORD:Ljava/lang/String; = "wifi_tether_network_password"

.field static final KEY_WIFI_TETHER_SECURITY:Ljava/lang/String; = "wifi_tether_security"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

.field private static mWasApBand6GHzSelected:Z = false


# instance fields
.field private mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

.field private mUnavailable:Z

.field mWifiHotspotSecurity:Landroidx/preference/Preference;

.field mWifiHotspotSpeed:Landroidx/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

.field mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

.field mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

.field private wasApBandPrefUpdated:Z


# direct methods
.method static bridge synthetic -$$Nest$mupdateDisplayWithNewConfig(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    .line 369
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 119
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->wasApBandPrefUpdated:Z

    .line 120
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string/jumbo v1, "wifi_tether_auto_turn_off"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 359
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 360
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 361
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 362
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 363
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 364
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 365
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    return-void
.end method


# virtual methods
.method buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 322
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->isSpeedFeatureAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v0

    .line 326
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x5

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_1

    move v0, v4

    :cond_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 337
    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 334
    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 340
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    .line 341
    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;->isEnabled()Z

    move-result v2

    .line 340
    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    const/16 v5, 0x10

    if-ne v2, v5, :cond_6

    const/4 p0, 0x1

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    .line 348
    filled-new-array {p0, v0}, [I

    move-result-object p0

    .line 350
    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_4

    .line 346
    :cond_5
    :goto_3
    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_4

    .line 353
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 355
    :goto_4
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

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

    .line 256
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "WifiTetherSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3f6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 251
    sget p0, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 196
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 197
    sget v1, Lcom/android/settings/R$string;->use_wifi_hotsopt_main_switch_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 199
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 178
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    .line 180
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 181
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 182
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 183
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherAutoOffPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    .line 184
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->canShowWifiHotspot(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "WifiTetherSettings"

    const-string v0, "can not launch Wi-Fi hotspot settings because the config is not set to show."

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isHotspotAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiTetherViewModel(Landroidx/lifecycle/ViewModelStoreOwner;)Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->isSpeedFeatureAvailable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->setupSpeedFeature(Z)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->getRestarting()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method

.method onRestartingChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    return-void
.end method

.method protected onSecuritySummaryChanged(Ljava/lang/Integer;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method protected onSpeedSummaryChanged(Ljava/lang/Integer;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 205
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isHotspotAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 218
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 224
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    .line 226
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 5

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->setSecurityType(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 278
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;->updateDisplay()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->isOweDualSapSupported()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->wasApBandPrefUpdated:Z

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 289
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries()V

    .line 290
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    .line 291
    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->wasApBandPrefUpdated:Z

    goto :goto_1

    .line 283
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries()V

    .line 284
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    .line 285
    iput-boolean v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->wasApBandPrefUpdated:Z

    .line 295
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result p1

    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWasApBand6GHzSelected:Z

    if-nez p1, :cond_3

    .line 297
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 298
    sput-boolean v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWasApBand6GHzSelected:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->setSecurityType(I)V

    .line 301
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    goto :goto_2

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result p1

    and-int/2addr p1, v3

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWasApBand6GHzSelected:Z

    if-ne p1, v2, :cond_4

    .line 304
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 305
    sput-boolean v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWasApBand6GHzSelected:Z

    :cond_4
    :goto_2
    return-void
.end method

.method setupSpeedFeature(Z)V
    .locals 2

    const-string/jumbo v0, "wifi_hotspot_security"

    .line 161
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    const-string/jumbo v0, "wifi_hotspot_speed"

    .line 162
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    .line 163
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->getSecuritySummary()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherViewModel:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->getSpeedSummary()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method
