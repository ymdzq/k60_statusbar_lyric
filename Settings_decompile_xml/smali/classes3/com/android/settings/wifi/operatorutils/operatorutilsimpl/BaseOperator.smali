.class public Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.super Lcom/android/settings/wifi/operatorutils/Operator;
.source "BaseOperator.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

.field public final mContext:Landroid/content/Context;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTeleMgr:Lmiui/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/operatorutils/Operator;-><init>()V

    const-string v0, "BaseOperator"

    .line 28
    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    .line 31
    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 32
    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 33
    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    .line 46
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo v0, "wifi"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "AmlMiuiWifiService"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/AmlMiuiWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    return-void
.end method

.method private getMatchedSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 164
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 168
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 172
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private isCustomWifiExist(Ljava/lang/String;)Z
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v1, "BaseOperator"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p0, "Wifi state is disabled"

    .line 270
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string p0, "ScanResult is null"

    .line 276
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 279
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 280
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "EAP"

    .line 282
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    return v0
.end method

.method private isCustomWifiSet(ILjava/lang/String;I)Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 253
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getMatchedSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 257
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 258
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v1, v2, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createPasspointConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "BaseOperator"

    .line 212
    new-instance v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 213
    new-instance v2, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 214
    invoke-virtual {v2, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2, p2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 217
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 218
    invoke-virtual {v2, p4}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, p5}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 220
    new-instance p4, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {p4}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 221
    invoke-virtual {p4, p3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p4, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 223
    invoke-virtual {v1, p4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 225
    :try_start_0
    iget-object p4, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4, v1}, Landroid/net/wifi/WifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p4}, Landroid/net/wifi/WifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setCustomWifiConfiguration EAP method "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " FQDN "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FriendlyName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Realm "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteSaveWifiConfig(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteSaveWifiConfig mNetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseOperator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Landroid/net/wifi/AmlMiuiWifiManager;->notifyConfigDeleted(I)V

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1
    return-void
.end method

.method public deleteSaveWifiConfig(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BaseOperator"

    const-string v4, " deleteSaveWifiConfig list mNetId: "

    .line 134
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz v3, :cond_2

    .line 136
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/AmlMiuiWifiManager;->notifyConfigDeleted(I)V

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getConfiguredNetworkNetId(Ljava/lang/String;)I
    .locals 2

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 244
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getConfiguredNetworkNetId(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getDefaultEapMethod()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSlotId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSlotidforOperatorName(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSlotidforOperatorName(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mTeleMgr:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isForbidDelSsid(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isOpCustomization(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public opCustomizationView(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerReceiver()V
    .locals 0

    .line 0
    return-void
.end method

.method public removePasspointConfiguration(Ljava/lang/String;)V
    .locals 0

    .line 145
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BaseOperator"

    const-string p1, " FQDN does not exist."

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCustomWifiConfiguration(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    .line 180
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->setCustomWifiConfiguration(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setCustomWifiConfiguration(ILjava/lang/String;I)I
    .locals 5

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->isCustomWifiSet(ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "BaseOperator"

    if-eqz v0, :cond_0

    const-string p0, "Custom wifi config has updated, return"

    .line 185
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 188
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 190
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 191
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const/4 p3, 0x0

    .line 193
    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->getMatchedSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result p3

    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 198
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 203
    iget-object p3, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->isCustomWifiExist(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 205
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setCustomWifiConfiguration"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public stopTethering(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateWifiConfig()V
    .locals 0

    .line 0
    return-void
.end method
