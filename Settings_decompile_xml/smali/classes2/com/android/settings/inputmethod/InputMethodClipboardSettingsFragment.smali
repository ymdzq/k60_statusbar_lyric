.class public Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodClipboardSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCloudQuickPastePref:Lcom/android/settings/MiuiValuePreference;

.field private mContext:Landroid/content/Context;

.field private mQuickPasteCloudPref:Landroidx/preference/CheckBoxPreference;

.field private mQuickPastePref:Landroidx/preference/CheckBoxPreference;

.field private mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

.field private mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initQuickPastePreference()V
    .locals 3

    .line 68
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getClipboardQuickPasteEnable(Landroid/content/Context;)Z

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPastePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPastePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getClipboardQuickPasteUrlEnable(Landroid/content/Context;)Z

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getClipboardQuickPasteTaobaoEnable(Landroid/content/Context;)Z

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudQuickPasteEnable(Landroid/content/Context;)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mCloudQuickPastePref:Lcom/android/settings/MiuiValuePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteCloudPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteCloudPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/android/settings/R$xml;->input_method_clipboard_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "quick_paste"

    .line 43
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPastePref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "quick_paste_url"

    .line 44
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "quick_paste_taobao"

    .line 45
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "quick_paste_cloud"

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteCloudPref:Landroidx/preference/CheckBoxPreference;

    const-string p1, "cloud_paste_mode"

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiValuePreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mCloudQuickPastePref:Lcom/android/settings/MiuiValuePreference;

    const-string/jumbo p1, "quick_access"

    .line 48
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 49
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPastePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 52
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPastePref:Landroidx/preference/CheckBoxPreference;

    const-string v1, "InputMethodClipSettings"

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "quick_paste click"

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "enable_miui_quick_paste"

    invoke-static {p1, v1, v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteUrlPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "quick_paste_url click"

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "enable_quick_paste_url"

    invoke-static {p0, p2, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteTaoBaoPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    const-string/jumbo p1, "quick_paste_taobao click"

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "enable_quick_paste_taobao"

    invoke-static {p0, p2, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mQuickPasteCloudPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    const-string/jumbo p1, "quick_paste_cloud click"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "enable_quick_paste_cloud"

    invoke-static {p1, v1, v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mCloudQuickPastePref:Lcom/android/settings/MiuiValuePreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error preference : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->initQuickPastePreference()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v0

    .line 63
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodClipboardSettingsFragment;->mCloudQuickPastePref:Lcom/android/settings/MiuiValuePreference;

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCloudQuickPasteTitleList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
