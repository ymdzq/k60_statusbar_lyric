.class public Lcom/android/settings/nfc/SecureNfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "SecureNfcEnabler.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mPreference:Landroidx/preference/SwitchPreference;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    .line 43
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mUserManager:Landroid/os/UserManager;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 48
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private isToggleable()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 78
    :cond_1
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->kddi_nfc_secure_toggle_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->nfc_secure_toggle_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/nfc/SecureNfcEnabler;->isToggleable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 70
    :cond_4
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->kddi_nfc_disabled_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->nfc_disabled_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 75
    :goto_1
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 55
    iget-object p2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p2, p1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    iget-object p2, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v0
.end method
