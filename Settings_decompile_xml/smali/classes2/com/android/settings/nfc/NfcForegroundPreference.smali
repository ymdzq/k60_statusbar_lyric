.class public Lcom/android/settings/nfc/NfcForegroundPreference;
.super Lcom/android/settingslib/miuisettings/preference/ListPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 63
    check-cast p2, Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreference;->refresh()V

    const/4 p0, 0x1

    return p0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return v0
.end method

.method refresh()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 52
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 54
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
