.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field private mAccessMode:I

.field private mCellId:Landroid/telephony/CellIdentity;

.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdvancedScanSupported:Z

.field private mLevel:I

.field private mShow4GForLTE:Z

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/CellIdentity;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/CellInfo;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/CellInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    .line 84
    invoke-static {p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 79
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mSubId:I

    .line 98
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    .line 99
    iput-boolean p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    .line 100
    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->isAdvancedPlmnScanSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mIsAdvancedScanSupported:Z

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsAdvancedScanSupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mIsAdvancedScanSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkOperatorPref"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput p4, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mAccessMode:I

    return-void
.end method

.method private getCellSignalStrength(Landroid/telephony/CellInfo;)Landroid/telephony/CellSignalStrength;
    .locals 0

    .line 291
    instance-of p0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz p0, :cond_0

    .line 292
    check-cast p1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    return-object p0

    .line 294
    :cond_0
    instance-of p0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz p0, :cond_1

    .line 295
    check-cast p1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    return-object p0

    .line 297
    :cond_1
    instance-of p0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p0, :cond_2

    .line 298
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    return-object p0

    .line 300
    :cond_2
    instance-of p0, p1, Landroid/telephony/CellInfoTdscdma;

    if-eqz p0, :cond_3

    .line 301
    check-cast p1, Landroid/telephony/CellInfoTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p0

    return-object p0

    .line 303
    :cond_3
    instance-of p0, p1, Landroid/telephony/CellInfoLte;

    if-eqz p0, :cond_4

    .line 304
    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    return-object p0

    .line 306
    :cond_4
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_5

    .line 307
    check-cast p1, Landroid/telephony/CellInfoNr;

    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIconIdForCell(Landroid/telephony/CellInfo;)I
    .locals 1

    .line 271
    instance-of v0, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_0

    .line 272
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_g:I

    return p0

    .line 274
    :cond_0
    instance-of v0, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_1

    .line 275
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_1x:I

    return p0

    .line 277
    :cond_1
    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-nez v0, :cond_6

    instance-of v0, p1, Landroid/telephony/CellInfoTdscdma;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_4

    .line 281
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    if-eqz p0, :cond_3

    .line 282
    sget p0, Lcom/android/settings/R$drawable;->ic_signal_strength_4g:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_lte:I

    :goto_0
    return p0

    .line 284
    :cond_4
    instance-of p0, p1, Landroid/telephony/CellInfoNr;

    if-eqz p0, :cond_5

    .line 285
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_5g:I

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    .line 278
    :cond_6
    :goto_1
    sget p0, Lcom/android/settings/R$drawable;->signal_strength_3g:I

    return p0
.end method

.method private updateIcon(I)V
    .locals 7

    .line 332
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mIsAdvancedScanSupported:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x5

    .line 336
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 337
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getIconIdForCell(Landroid/telephony/CellInfo;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 336
    invoke-static/range {v1 .. v6}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getNetworkInfo()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkInfo(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorInfo()Lcom/android/internal/telephony/OperatorInfo;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 199
    :cond_0
    instance-of v2, v0, Landroid/telephony/CellIdentityGsm;

    if-eqz v2, :cond_1

    .line 200
    check-cast v0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_1
    instance-of v2, v0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v2, :cond_2

    .line 203
    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :cond_2
    instance-of v2, v0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v2, :cond_3

    .line 206
    check-cast v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityTdscdma;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_3
    instance-of v2, v0, Landroid/telephony/CellIdentityLte;

    if-eqz v2, :cond_4

    .line 209
    check-cast v0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMobileNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_4
    instance-of v2, v0, Landroid/telephony/CellIdentityNr;

    if-eqz v2, :cond_7

    .line 212
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCagSnpnEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 213
    move-object p0, v0

    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 214
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_5
    check-cast v0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v1

    .line 221
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1
.end method

.method public isForbiddenNetwork()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSameCell(Landroid/telephony/CellInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 6

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mSubId:I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v1, v3, v4}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getMPLMNOperatorName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq v2, v1, :cond_0

    move-object v0, v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCagSnpnEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v3, " "

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    instance-of v1, v1, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getNetworkInfo()Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkOperatorPref"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->isForbiddenNetwork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->forbidden_network:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2
    invoke-static {v0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    if-nez v0, :cond_3

    return-void

    .line 171
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCagSnpnEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    instance-of v1, v0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/telephony/CellIdentityNr;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    check-cast v0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SnpnInfo;->getLevel()I

    move-result v0

    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellSignalStrength(Landroid/telephony/CellInfo;)Landroid/telephony/CellSignalStrength;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 180
    :goto_0
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 181
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mSubId:I

    return-void
.end method

.method public updateCell(Landroid/telephony/CellInfo;)V
    .locals 1

    .line 109
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    return-void
.end method

.method protected updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 115
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellId:Landroid/telephony/CellIdentity;

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->refresh()V

    return-void
.end method
