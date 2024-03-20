.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "MexicoOperator.java"


# instance fields
.field private mDefaultEapMethod:I

.field private mListATMncMCC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMccmnc:Ljava/lang/String;

.field private mSlotid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mSlotid:I

    const-string p1, "334050"

    .line 22
    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    const/16 p1, 0x17

    .line 32
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mDefaultEapMethod:I

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mListATMncMCC:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->initATMncMCC()V

    return-void
.end method

.method private initATMncMCC()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mListATMncMCC:Ljava/util/List;

    const-string v1, "334050"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mListATMncMCC:Ljava/util/List;

    const-string v1, "334090"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mListATMncMCC:Ljava/util/List;

    const-string v0, "310410"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isATOperator()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mListATMncMCC:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 81
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mSlotid:I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AT&T-MEX-WiFi"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->isATOperator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateWifiConfig()V
    .locals 10

    .line 48
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->isATOperator()Z

    move-result v0

    const-string v1, "attwifi.com"

    const-string v2, "attmexwifi.com"

    const-string v3, "310410"

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wlan.mnc410.mcc310.3gppnetwork.org"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "wlan.mnc050.mcc334.3gppnetwork.org"

    :goto_1
    move-object v7, v0

    const-string v6, "ConectATTe"

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x17

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->createPasspointConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save AT&T wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mSlotid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mccmnc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseOperator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->removePasspointConfiguration(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
