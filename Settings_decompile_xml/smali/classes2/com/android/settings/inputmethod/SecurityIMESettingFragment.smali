.class public Lcom/android/settings/inputmethod/SecurityIMESettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecurityIMESettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

.field private mSimeEnablePreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateSecImeNumRandomOrder(Lcom/android/settings/inputmethod/SecurityIMESettingFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->updateSecImeNumRandomOrder(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isSecImeNumRandomOder()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "security_ime_num_is_random"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateSecIMEPreference(Z)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_miui_security_ime"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateSecImeNumRandomOrder(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighKeyboardChecked(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "security_ime_num_is_random"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected getPreferenceScreenResId()I
    .locals 0

    .line 56
    sget p0, Lcom/android/settings/R$xml;->security_keyboard_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "miui_security_ime_enable"

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mSimeEnablePreference:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "num_keyboard_order_setting"

    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enable_miui_security_ime"

    const/4 v1, 0x1

    .line 31
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 33
    iget-object v0, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mSimeEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mSimeEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$string;->security_input_num_order:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighText(I)V

    .line 37
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$string;->security_input_num_random_order:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setDefaultText(I)V

    .line 38
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$drawable;->security_input_num_order_icon:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighImage(I)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    sget v0, Lcom/android/settings/R$drawable;->security_input_num_random_order_icon:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setDefaultImage(I)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->isSecImeNumRandomOder()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setHighKeyboardChecked(Z)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->mNumKeyboardPreference:Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;

    new-instance v0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;-><init>(Lcom/android/settings/inputmethod/SecurityIMESettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/FullScreenInputMethodPreference;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "miui_security_ime_enable"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->updateSecIMEPreference(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
