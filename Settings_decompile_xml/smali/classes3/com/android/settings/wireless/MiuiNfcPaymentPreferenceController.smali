.class public Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MiuiNfcPaymentPreferenceController.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 23
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "nfc_payment"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 29
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowMiuiNFC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.nfc"

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    return v1

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/settings/RegionUtils;->IS_MEXICO_TELCEL:Z

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
