.class public Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WifiHotspotSpeedViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;
    }
.end annotation


# instance fields
.field protected final m5gAvailableObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final m6gAvailableObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field protected mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field protected mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field protected mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

.field protected mSpeedInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;",
            ">;>;"
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
.method public static synthetic $r8$lambda$-Urkz2N4DbhUlFUH7y0bcX2DI-I(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IsuYwTlJdWQ4jfUnk0p_wSXM8I8(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbiExEFyi9nZKryQRfRU4fyysdE(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    .line 58
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    .line 49
    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    .line 50
    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    .line 51
    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    .line 53
    new-instance v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m6gAvailableObserver:Landroidx/lifecycle/Observer;

    .line 54
    new-instance v1, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m5gAvailableObserver:Landroidx/lifecycle/Observer;

    .line 55
    new-instance v3, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;)V

    iput-object v3, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedTypeObserver:Landroidx/lifecycle/Observer;

    .line 59
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    .line 61
    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->get6gAvailable()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->get5gAvailable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setAutoRefresh(Z)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-virtual {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->is6GHzBandSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->on6gAvailableChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->on5gAvailableChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->onSpeedTypeChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object p0

    const-string v0, "WifiHotspotSpeedViewModel"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 137
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getRestarting()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedInfoMapData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;",
            ">;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpeedViewData(), mSpeedInfoMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method protected on5gAvailableChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gAvailableChanged(), available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsEnabled:Z

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isDualBand()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on5gAvailableChanged(), showDualBand:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    iput-boolean p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsVisible:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void
.end method

.method protected on6gAvailableChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on6gAvailableChanged(), available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsEnabled:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->get6gAvailable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m6gAvailableObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->get5gAvailable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->m5gAvailableObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->getSpeedType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedTypeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onSpeedTypeChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedTypeChanged(), speedType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->log(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;->mIsChecked:Ljava/lang/Boolean;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->updateSpeedInfoMapData()V

    return-void
.end method

.method public setSpeedType(Ljava/lang/Integer;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mWifiHotspotRepository:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setSpeedType(I)V

    return-void
.end method

.method protected updateSpeedInfoMapData()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo2g5g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfo6g:Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel$SpeedInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMapData:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedViewModel;->mSpeedInfoMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
