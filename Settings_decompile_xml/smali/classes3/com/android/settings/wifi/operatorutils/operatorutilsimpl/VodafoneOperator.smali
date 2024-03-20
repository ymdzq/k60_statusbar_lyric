.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "VodafoneOperator.java"


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

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mListConfig:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mDefaultEapMethod:I

    const-string v0, "\"Vodafone NL Wifi\"-WPA_EAP"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mListConfig:Ljava/util/List;

    const-string p1, "\"VodafoneWiFi\"-WPA_EAP"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private deleteWifiConfig()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mListConfig:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getConfiguredNetworkNetId(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(I)V

    return-void
.end method

.method private getVodafoneOperator()Ljava/lang/String;
    .locals 5

    const-string v0, "20404"

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v1

    const-string v2, "23415"

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    if-ne v3, v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    if-ne v1, v3, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "Vodafone NL Wifi"

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VodafoneWiFi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->getVodafoneOperator()Ljava/lang/String;

    move-result-object p0

    const-string p1, "20404"

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "23415"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public opCustomizationView(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wifi_detail_delete"

    .line 67
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const-string/jumbo v0, "wifi_detail_modify"

    .line 68
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 71
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 73
    :cond_1
    sget p0, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget p0, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateWifiConfig()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->getVodafoneOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20404"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "BaseOperator"

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    .line 38
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    const-string v1, "Vodafone NL Wifi"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save nl wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "23415"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    const-string v1, "VodafoneWiFi"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save uk wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;->deleteWifiConfig()V

    :goto_0
    return-void
.end method
