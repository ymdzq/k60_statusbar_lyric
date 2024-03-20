.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "SingaporeOperator.java"


# instance fields
.field private mDefaultEapMethod:I

.field private mSlotid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    const/4 p1, 0x4

    .line 19
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mDefaultEapMethod:I

    return-void
.end method

.method private deleteWifiConfig()V
    .locals 1

    const-string v0, "\"Singtel WIFI\"-WPA_EAP"

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    return-void
.end method

.method private isM1Operator()Z
    .locals 2

    const-string v0, "52503"

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 74
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSHOperator()Z
    .locals 2

    const-string v0, "52505"

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 83
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSingaporeOperator()Z
    .locals 3

    const-string v0, "52501"

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "52502"

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 65
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "Singtel"

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Wireless@SGx"

    const/4 v4, -0x1

    if-gt v1, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->isSingaporeOperator()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 43
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->isM1Operator()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 45
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->isSHOperator()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public updateWifiConfig()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->isSingaporeOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->mSlotid:I

    const-string v1, "Singtel WIFI"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;->deleteWifiConfig()V

    :goto_0
    const-string p0, "BaseOperator"

    const-string/jumbo v0, "save sg wifi config successful mSlotid "

    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
