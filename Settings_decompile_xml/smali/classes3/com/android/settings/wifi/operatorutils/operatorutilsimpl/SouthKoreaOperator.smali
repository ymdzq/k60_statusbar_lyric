.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "SouthKoreaOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;
    }
.end annotation


# instance fields
.field private lastType:I

.field private mContext:Landroid/content/Context;

.field private mDefaultEapMethod:I

.field private mListConfigKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkConnectivityReceiver:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;

.field private mSlotid:I

.field private mSsid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetlastType(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->lastType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastType(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->lastType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->lastType:I

    const/4 v0, 0x5

    .line 60
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mDefaultEapMethod:I

    .line 64
    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteWifiConfig()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->deleteSaveWifiConfig(Ljava/util/List;)V

    return-void
.end method

.method private isLGUOperator()Z
    .locals 2

    const-string v0, "45006"

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 184
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOperator()Z
    .locals 2

    const-string v0, "45008"

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 166
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSKTOperator()Z
    .locals 2

    const-string v0, "45005"

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getSlotidforOperatorName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 175
    iput v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDefaultEapMethod()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mDefaultEapMethod:I

    return p0
.end method

.method public getSlotId()I
    .locals 0

    .line 145
    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    return p0
.end method

.method public isForbidDelSsid(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "KT GiGA WiFi"

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "KT WiFi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "olleh GiGA WiFi"

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ollehWiFi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isOperator()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "KT GiGA WiFi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KT WiFi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "olleh GiGA WiFi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ollehWiFi"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string v0, "T wifi zone_secure"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isSKTOperator()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isLGUOperator()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "U+zone"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "FREE_U+zone"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "U+CAN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "5G_U+zone"

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "U+zone_5G"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public opCustomizationView(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "wifi_detail_delete"

    .line 121
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const-string v0, "KT GiGA WiFi"

    .line 122
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KT WiFi"

    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "olleh GiGA WiFi"

    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSsid:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ollehWiFi"

    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mNetworkConnectivityReceiver:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;-><init>(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mNetworkConnectivityReceiver:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;

    .line 153
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mNetworkConnectivityReceiver:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public updateWifiConfig()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isOperator()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "KT GiGA WiFi"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 72
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "KT WiFi"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 73
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "olleh GiGA WiFi"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 74
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "ollehWiFi"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"KT GiGA WiFi\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"KT WiFi\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"olleh GiGA WiFi\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"ollehWiFi\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save  SouthKoreaOperator wifi config successful mSlotid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseOperator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isSKTOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "T wifi zone_secure"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v0, "\"T wifi zone_secure\"-WPA_EAP"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->isLGUOperator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "U+zone"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 87
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "FREE_U+zone"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 88
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "U+CAN"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 89
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "5G_U+zone"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 90
    iget v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mSlotid:I

    const-string v2, "U+zone_5G"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"U+zone\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"FREE_U+zone\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"U+CAN\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v1, "\"5G_U+zone\"-WPA_EAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->mListConfigKey:Ljava/util/List;

    const-string v0, "\"U+zone_5G\"-WPA_EAP"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->deleteWifiConfig()V

    :goto_0
    return-void
.end method
