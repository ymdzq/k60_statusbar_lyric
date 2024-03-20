.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "EuropeOperator.java"


# instance fields
.field private mDefaultEapMethod:I

.field private mListConfig:Ljava/util/List;
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

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mListConfig:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mDefaultEapMethod:I

    const-string v0, "\"Telekom_SIM\"-WPA_EAP"

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mListConfig:Ljava/util/List;

    const-string p1, "\"COSMOTEWiFiAuto\"-WPA_EAP"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private deleteWifiConfig()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mListConfig:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    return-void
.end method

.method private isDEOperator()Z
    .locals 2

    const-string v0, "26201"

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 63
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGROperator()Z
    .locals 2

    const-string v0, "20201"

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 72
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Telekom_SIM"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COSMOTEWiFiAuto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->isDEOperator()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->isGROperator()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateWifiConfig()V
    .locals 4

    .line 30
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->isDEOperator()Z

    move-result v0

    const-string v1, "BaseOperator"

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    .line 31
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    const-string v3, "Telekom_SIM"

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save DE wifi config successful mSlotid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->isGROperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    const-string v3, "COSMOTEWiFiAuto"

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save GR wifi config successful mSlotid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;->deleteWifiConfig()V

    :goto_0
    return-void
.end method
