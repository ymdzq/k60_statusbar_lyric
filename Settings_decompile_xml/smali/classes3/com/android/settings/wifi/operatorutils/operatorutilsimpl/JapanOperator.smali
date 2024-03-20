.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "JapanOperator.java"


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mDefaultEapMethod:I

.field private mListKDDIMncMCC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const/4 v0, 0x5

    .line 23
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mDefaultEapMethod:I

    const-string v0, "connectivity"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->cm:Landroid/net/ConnectivityManager;

    .line 33
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->initKddiMncMCC()V

    return-void
.end method

.method private deleteWifiConfig()V
    .locals 1

    const-string v0, "\"0000Rakuten\"-WPA_EAP"

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    const-string v0, "\"au_Wi-Fi2\"-WPA_EAP"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    return-void
.end method

.method private initKddiMncMCC()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44008"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44050"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44051"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44052"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44053"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44054"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44055"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44056"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44070"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44071"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44072"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44073"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44074"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44075"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44076"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44077"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44078"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44079"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44088"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v1, "44089"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    const-string v0, "44170"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isKDDIOperator()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mListKDDIMncMCC:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 122
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRMNOperator()Z
    .locals 2

    const-string v0, "44011"

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 113
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSoftBankOperator()Z
    .locals 2

    const-string v0, "44020"

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 131
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "0000Rakuten"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isRMNOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "au_Wi-Fi2"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isKDDIOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "0002softbank"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isSoftBankOperator()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 81
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mDefaultEapMethod:I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public stopTethering(I)V
    .locals 2

    const-string v0, "BaseOperator"

    const-string v1, "ready to stop Tethering!"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isKDDIOperator()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->cm:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->cm:Landroid/net/ConnectivityManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->cm:Landroid/net/ConnectivityManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_0
    return-void
.end method

.method public updateWifiConfig()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isRMNOperator()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    const-string v2, "0000Rakuten"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save RMN wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseOperator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->isKDDIOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->mSlotid:I

    const-string v2, "au_Wi-Fi2"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;->deleteWifiConfig()V

    :goto_0
    return-void
.end method
