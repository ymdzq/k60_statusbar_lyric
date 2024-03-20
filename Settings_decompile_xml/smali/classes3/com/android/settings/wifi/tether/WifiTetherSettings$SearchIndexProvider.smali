.class Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WifiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchIndexProvider"
.end annotation


# instance fields
.field private final mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    .line 379
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-direct {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    return-void
.end method

.method constructor <init>(ILcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    .line 385
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    .line 414
    invoke-static {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isTetherAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;->isHotspotAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo p0, "wifi_tether_network_name"

    .line 394
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "wifi_tether_security"

    .line 395
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "wifi_tether_network_password"

    .line 396
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "wifi_tether_auto_turn_off"

    .line 397
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "wifi_tether_network_ap_band"

    .line 398
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo p0, "wifi_tether_settings_screen"

    .line 402
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 408
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->canShowWifiHotspot(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "settings_tether_all_in_one"

    .line 409
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
