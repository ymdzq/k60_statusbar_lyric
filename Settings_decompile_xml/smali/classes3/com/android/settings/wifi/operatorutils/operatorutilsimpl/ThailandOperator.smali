.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "ThailandOperator.java"


# instance fields
.field private mDefaultEapMethod:I

.field private mSlotid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    const/4 p1, 0x4

    .line 20
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mDefaultEapMethod:I

    return-void
.end method

.method private deleteTHWifiConfig()V
    .locals 1

    const-string v0, "\"  AIS SMART Login\"-WPA_EAP"

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    const-string v0, "\"   .@ TrueMove H\"-WPA_EAP"

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    return-void
.end method

.method private isTHOperator()Z
    .locals 3

    const-string v0, "52003"

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "52001"

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 62
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0
.end method

.method private isTRUEOperator()Z
    .locals 3

    const-string v0, "52000"

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "52004"

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 72
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "  AIS SMART Login"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->isTHOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "   .@ TrueMove H"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->isTRUEOperator()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateWifiConfig()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->isTHOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    const-string v1, "  AIS SMART Login"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseOperator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->isTRUEOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->mSlotid:I

    const-string v1, "   .@ TrueMove H"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;->deleteTHWifiConfig()V

    :goto_0
    return-void
.end method
