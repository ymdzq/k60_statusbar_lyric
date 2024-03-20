.class public Lcom/android/settings/wifi/factory/WifiFeatureProvider;
.super Ljava/lang/Object;
.source "WifiFeatureProvider.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getTetheringManager()Landroid/net/TetheringManager;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTetheringManager():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiFeatureProvider"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mTetheringManager:Landroid/net/TetheringManager;

    return-object p0
.end method

.method public getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getTetheringManager()Landroid/net/TetheringManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/TetheringManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiHotspotRepository():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiFeatureProvider"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-object p0
.end method

.method public getWifiHotspotSecurityViewModel(Landroidx/lifecycle/ViewModelStoreOwner;)Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;
    .locals 2

    .line 107
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;

    .line 108
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiHotspotSecurityViewModel():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiFeatureProvider"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWifiHotspotSpeedViewModel(Landroidx/lifecycle/ViewModelStoreOwner;)Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;
    .locals 2

    .line 118
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    .line 119
    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiHotspotSpeedViewModel():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiFeatureProvider"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public getWifiTetherViewModel(Landroidx/lifecycle/ViewModelStoreOwner;)Lcom/android/settings/wifi/tether/WifiTetherViewModel;
    .locals 0

    .line 99
    new-instance p0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    return-object p0
.end method

.method public getWifiVerboseLogging()Lcom/android/settings/wifi/factory/WifiVerboseLogging;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    iget-object v1, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/factory/WifiVerboseLogging;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->mWifiVerboseLogging:Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    return-object p0
.end method

.method public verboseLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiVerboseLogging()Lcom/android/settings/wifi/factory/WifiVerboseLogging;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/factory/WifiVerboseLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
