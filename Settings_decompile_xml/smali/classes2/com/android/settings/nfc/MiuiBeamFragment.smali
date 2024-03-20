.class public Lcom/android/settings/nfc/MiuiBeamFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiBeamFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-boolean p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByOnlyAdmin:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByBase:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByBase:Z

    xor-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_outgoing_beam"

    .line 51
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByBase:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 57
    new-instance v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByOnlyAdmin:Z

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_1
    sget p1, Lcom/android/settings/R$xml;->miui_beam:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "key_miui_beam_enable"

    .line 65
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    return-void

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "key_miui_beam_enable"

    .line 105
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p2, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result p2

    goto :goto_0

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    .line 113
    iget-object p0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByBase:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mAndroidBeamSwitch:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/nfc/MiuiBeamFragment;->mBeamDisallowedByBase:Z

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
