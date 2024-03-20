.class public Lcom/android/settings/wifi/tether/WifiTetherViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WifiTetherViewModel.java"


# static fields
.field static sSecuritySummaryResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sSpeedSummaryResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mSecuritySummary:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSecurityTypeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeedSummary:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSpeedTypeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public static synthetic $r8$lambda$YhHRhVDrd-22baHvt5Vnd7FzlDM(Lcom/android/settings/wifi/tether/WifiTetherViewModel;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->lambda$new$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDb1sBBJquXZQXxK6A1VEWE0aL4(Lcom/android/settings/wifi/tether/WifiTetherViewModel;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    const/4 v1, 0x3

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_security_sae:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_security_psk_sae:I

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 56
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_security_wpa2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    .line 65
    sget v4, Lcom/android/settings/R$string;->wifi_hotspot_speed_summary_2g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    sget v3, Lcom/android/settings/R$string;->wifi_hotspot_speed_summary_5g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_hotspot_speed_summary_6g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    sget v2, Lcom/android/settings/R$string;->wifi_hotspot_speed_summary_2g_and_5g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 75
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Landroidx/lifecycle/Observer;

    .line 76
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Landroidx/lifecycle/Observer;

    .line 80
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->onSecurityTypeChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->onSpeedTypeChanged(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getRestarting()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getRestarting()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getSecuritySummary()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedSummary()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public isSpeedFeatureAvailable()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result p0

    return p0
.end method

.method protected onCleared()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSecurityType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecurityTypeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedTypeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method protected onSecurityTypeChanged(I)V
    .locals 3

    .line 140
    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    .line 141
    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSpeedTypeChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 159
    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    .line 160
    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->refresh()V

    return-void
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
