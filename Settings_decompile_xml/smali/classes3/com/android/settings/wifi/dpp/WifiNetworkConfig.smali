.class public Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
.super Ljava/lang/Object;
.source "WifiNetworkConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;
    }
.end annotation


# instance fields
.field private mHiddenSsid:Z

.field private mIsHotspot:Z

.field private mNetworkId:I

.field private mPreSharedKey:Ljava/lang/String;

.field private mSecurity:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    .line 78
    iget-boolean v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    .line 79
    iget v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    .line 80
    iget-boolean p1, p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mIsHotspot:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mIsHotspot:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    .line 69
    iput-boolean p4, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    .line 70
    iput p5, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    .line 71
    iput-boolean p6, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mIsHotspot:Z

    return-void
.end method

.method private addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 328
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "\""

    if-lt p0, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 332
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_2

    .line 157
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 315
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 318
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 319
    iget p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return-object v0
.end method

.method static getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 7

    const-string/jumbo v0, "security"

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ssid"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "preSharedKey"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "hiddenSsid"

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "networkId"

    const/4 v6, -0x1

    .line 103
    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "isHotspot"

    .line 105
    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move v4, v0

    .line 107
    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    return-object p0
.end method

.method static getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 8

    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_0
    new-instance v7, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-object v7
.end method

.method static isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static isValidConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "nopass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getHiddenSsid()Z
    .locals 0

    .line 201
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    return p0
.end method

.method public getNetworkId()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    return p0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    return-object p0
.end method

.method getQrCode()Ljava/lang/String;
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "S:"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    .line 173
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "T:"

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "P:"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "H:"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ";;"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method getWifiConfigurations(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const-string v1, "nopass"

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 278
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 279
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    .line 280
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 283
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a

    if-ne p1, v3, :cond_3

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    const-string v3, "[0-9A-Fa-f]*"

    .line 285
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    aput-object p0, p1, v2

    goto :goto_0

    .line 288
    :cond_3
    iget-object p1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    goto :goto_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    const-string v3, "WPA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x2

    .line 291
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 293
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 294
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    iput-object p0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    const-string v3, "SAE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    .line 301
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 302
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 310
    :cond_7
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_8
    const-string p0, "WifiNetworkConfig"

    const-string p1, "Unsupported security"

    .line 306
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 262
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    const/4 v1, 0x6

    .line 264
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 265
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getBasicWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 269
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 270
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isHotspot()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mIsHotspot:Z

    return p0
.end method

.method public isSupportWifiDpp(Landroid/content/Context;)Z
    .locals 3

    .line 213
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 222
    :cond_1
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 223
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "SAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const-string p1, "WPA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 225
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v1
.end method
