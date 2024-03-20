.class public Lcom/android/settings/display/MonochromeModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MonochromeModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMonochromeModeObserver:Landroid/database/ContentObserver;

.field private monochromeModeEnable:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mgetMonochromeMode(Lcom/android/settings/display/MonochromeModeFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/MonochromeModeFragment;->getMonochromeMode()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getMonochromeMode()I
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_monochrome_mode"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isMonochromeModeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_monochrome_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setMonochromeMode(I)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_monochrome_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setMonochromeModeEnable(Z)V
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_monochrome_mode_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 49
    const-class p0, Lcom/android/settings/display/MonochromeModeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/android/settings/R$xml;->monochrome_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "monochrome_mode_enable"

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment;->monochromeModeEnable:Landroidx/preference/CheckBoxPreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/MonochromeModeFragment;->isMonochromeModeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment;->monochromeModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "monochrome_mode_global"

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperModePreference;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/display/MonochromeModeFragment;->getMonochromeMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "monochrome_mode_local"

    .line 69
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PaperModePreference;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/display/MonochromeModeFragment;->getMonochromeMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 72
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/settings/display/PaperModePreference;->setOnRightArrowClickListener(Lcom/android/settings/display/PaperModePreference$OnRightArrowClickListener;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/android/settings/display/PaperModePreference;->setShowRightArrow(Z)V

    .line 76
    new-instance v2, Lcom/android/settings/display/MonochromeModeFragment$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/settings/display/MonochromeModeFragment$1;-><init>(Lcom/android/settings/display/MonochromeModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V

    iput-object v2, p0, Lcom/android/settings/display/MonochromeModeFragment;->mMonochromeModeObserver:Landroid/database/ContentObserver;

    .line 87
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_monochrome_mode"

    .line 88
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mMonochromeModeObserver:Landroid/database/ContentObserver;

    .line 87
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeFragment;->mMonochromeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "monochrome_mode_enable"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeFragment;->monochromeModeEnable:Landroidx/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/MonochromeModeFragment;->setMonochromeModeEnable(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "monochrome_mode_global"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/display/MonochromeModeFragment;->setMonochromeMode(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "monochrome_mode_local"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/display/MonochromeModeFragment;->setMonochromeMode(I)V

    .line 110
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeFragment;->mMonochromeModeObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onRightArrowClick(Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;)V
    .locals 6

    .line 116
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "monochrome_mode_local"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    const-class p1, Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/R$string;->screen_monochrome_mode_set_apps_title:I

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method
