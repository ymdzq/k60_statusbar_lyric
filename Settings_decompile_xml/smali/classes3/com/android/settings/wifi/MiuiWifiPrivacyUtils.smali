.class public Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;
.super Ljava/lang/Object;
.source "MiuiWifiPrivacyUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEphemeral:Z

.field private mIsPasspoint:Z

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsEphemeral:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsPasspoint:Z

    .line 21
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public static isSamePrefValue(II)Z
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result p0

    .line 65
    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getRandomizationValue()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 56
    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return p0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiUtils;->getDefaultWifiPrivacy(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 39
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result p0

    return p0
.end method

.method public setIsEphemeral(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsEphemeral:Z

    return-void
.end method

.method public setIsPasspoint(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsPasspoint:Z

    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public update(Lmiuix/appcompat/widget/Spinner;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->getRandomizationValue()I

    move-result v0

    .line 45
    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsEphemeral:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->mIsPasspoint:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 50
    invoke-virtual {p1, p0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_1
    return-void
.end method
