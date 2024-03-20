.class public Lcom/android/settings/security/WifiProtectionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiProtectionSettings.java"


# instance fields
.field private mCheckbox:Landroidx/preference/CheckBoxPreference;

.field private mTip:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/android/settings/R$xml;->wifi_protection_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "wifi_protection_checkbox"

    .line 27
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/security/WifiProtectionSettings;->mCheckbox:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "wifi_protection_tip"

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/WifiProtectionSettings;->mTip:Landroidx/preference/Preference;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/android/settings/security/WifiProtectionSettings;->mCheckbox:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/security/WifiProtectionSettings;->mCheckbox:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 36
    iget-object p0, p0, Lcom/android/settings/security/WifiProtectionSettings;->mTip:Landroidx/preference/Preference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
