.class Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "NetworkProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchIndexProvider"
.end annotation


# instance fields
.field private final mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    .line 1656
    new-instance p1, Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    invoke-direct {p1}, Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    return-void
.end method

.method constructor <init>(ILcom/android/settings/network/NetworkProviderSettings$WifiRestriction;)V
    .locals 0

    .line 1661
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    .line 1662
    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 1667
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1669
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "main_toggle_wifi"

    .line 1670
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    :cond_0
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return-object v0

    .line 1676
    :cond_1
    invoke-static {p1, p0}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigsCount(Landroid/content/Context;Landroid/net/wifi/WifiManager;)I

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "saved_networks"

    .line 1677
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
